<#assign expires = ((.now?long + 365 * 86400000)?number_to_datetime?iso("UTC"))>
Contact: ${content.contact}
Expires: ${expires}
Preferred-Languages: ${content.languages}
Canonical: ${content.canonical}
Policy: ${content.policy}